import React from 'react';
import ReactRails from 'react-rails';

export default class ListingWizardApp extends React.Component {
  render() {
    const { listing, step, errors } = this.state;
    return (
      <div className="row listing-wizard">
        <FormBox listing={listing} step={step} updateField={this.updateField} MAX_STEPS={MAX_STEPS} errors={errors} />
        <InfoBox step={step} listing={listing} errors={errors} />
      </div>
    );
  }
}