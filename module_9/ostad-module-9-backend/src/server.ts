import express from 'express';

const app = express();

const port = Number(process.env.PORT ?? 3000);
const version = process.env.APP_VERSION ?? '0.0.1';

app.get('/', (_req, res) => {
  res.json({
    name: 'ostad-module-9-backend',
    version,
    time: new Date().toISOString(),
  });
});

app.get('/health', (_req, res) => {
  res.status(200).send('OK');
});

app.listen(port, '0.0.0.0', () => {
  // eslint-disable-next-line no-console
  console.log(`Server listening on port ${port}. Version: ${version}`);
});
